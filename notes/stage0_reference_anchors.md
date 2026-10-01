# Stage 0 OpenMSX reference anchors

Status: 2026-10-01. These are the states that must remain regression anchors while later presentation/object bugs are fixed.

## A288 / X=3072

This is the important vehicle/mode-2 anchor.

Proven results:

- full E000 ring: 2048/2048 exact;
- final D988, including fast ground, object stamps and stars: 768/768 exact;
- active object positions matched the ROM after correcting the spawn-camera origin to 1008 px;
- presentation tuple around this region validates the R2/R18/R23 double-buffer model.

A historical bug here was using 992 px as the spawn-camera origin. The correct live anchors are `X=1536 -> CA34=$10C0` and `X=3072 -> CA34=$1180`, giving 1008 px.

## A31A / X=3504, Y=-152

Diagonal-scroll anchor.

Proven results:

- E000 ring exact;
- final D988 768/768 exact;
- star positions and tile value exact after removing a premature `$20` parallax carry at the preset transition.

This anchor protects the horizontal-to-diagonal transition and vertical ring writer.

## A336 / X=3544, Y=-192

Post-wait / next horizontal writer anchor.

Proven results:

- E000 ring exact after modelling `$1D` as a one-event defer;
- final D988 768/768 exact after porting the staggered type `$20` frame selector.

Type `$20` animation uses an eight-direction player relation and a stagger based on `(CA02 + slot_id) & 7`.

## A3D8 / X=4108, Y=-116

Late vehicle/tower approach.

Proven result: full E000 ring is 2048/2048 exact. The stored pre-star capture differs only by expected star inserts when compared after the wrong breakpoint phase.

## A438 fight gate / X=$1100, Y=0

Later validation: `rom_gate_transition_validation_2026-10-01.md` shows the type64
death handler selects stage1 rather than continuing the old stream. C0D6 remains0
in that traced encounter; the historical “fight gate” label identifies the wait
location, not proof the FF16 command executed.

The stream stops here at the fight gate. Repeated OpenMSX snapshots show the ring remains 2048/2048 exact while the object handlers continue to run.

Clean 152.50-s object reference:

- type `$64`: state 3, frame bytes `f5=4/f6=5`, x `$1200`, y `$0C00`;
- type `$3D`: state 1, `f6=1`, x `$1600`, y `$1200`;
- three type `$40` effect/sprite-side objects to the right.

The current native preview seeds this reference pool at the gate so the late compositor can be developed without resetting to the level start.

## Type $64 gate compositor

A live `$7AC0` trace shows type `$64` bypassing the normal frame-list API and stamping four raw tile definitions. Current native reconstruction:

- `$9179` at tile offset `(0, 0)`;
- `$91D7` at `(+10, 0)`;
- `$9381` at `(-7, -8)`;
- `$934B` at `(+6, -7)`.

Type `$3D` uses the normal generic tile-frame decoder and contributes a 4 x 16 matrix.

The next required step is the real type `$64` handler/state machine, so the gate object is not just a deterministic snapshot.
