"""Byte geometry and the two reviewed collision velocity callbacks."""

def word_bytes(value):
    return [value & 255, (value >> 8) & 255]


def velocity_callback(target_type, attacker_type, selector, status, initial, incoming, records):
    y, x = initial
    if target_type not in (0x27, 0x4d):
        return y, x
    if attacker_type in (4, 7):
        shift = 2 if target_type == 0x27 else 1
        def arithmetic(value):
            return ((value if value < 32768 else value - 65536) >> shift) & 65535
        vy, vx = map(arithmetic, incoming)
    elif attacker_type in (5, 6) and selector < 4:
        vx, vy = records[selector]
    else:
        return y, x
    if target_type == 0x27:
        return (y + vy) & 65535, (x + vx) & 65535
    return (y if status & 5 else vy), (x if status & 10 else vx)


def fine_overlap(source, target, shapes):
    def geometry(frame, x, y):
        for component in frame['components']:
            selector = component[5]
            if not selector:
                continue
            shape = shapes[selector]
            yield (((y << 3) >> 8) + component[1] + shape['y_offset']) & 255, shape['y_extent'], \
                  (((x << 3) >> 8) + component[2] + shape['x_offset']) & 255, shape['x_extent']
    a, ax, ay = source
    b, bx, by = target
    for y, ys, x, xs in geometry(a, ax, ay):
        for ty, tys, tx, txs in geometry(b, bx, by):
            if ((ty-y+tys)&255) < ((ys+tys)&255) and ((tx-x+txs)&255) < ((xs+txs)&255):
                return True
    return False
