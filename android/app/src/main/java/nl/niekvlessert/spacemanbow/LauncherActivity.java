package nl.niekvlessert.spacemanbow;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.io.*;
import java.security.MessageDigest;
public class LauncherActivity extends Activity {
    private TextView status;
    private Button choose;
    @Override public void onCreate(Bundle state) {
        super.onCreate(state);
        LinearLayout layout = new LinearLayout(this);
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.setPadding(32, 48, 32, 32);
        status = new TextView(this);
        status.setText("Space Manbow\nChoose your own ROM to play. A keyboard or controller with keyboard mapping is required.");
        choose = new Button(this);
        choose.setText("Choose ROM");
        choose.setOnClickListener(v -> {
            Intent picker = new Intent(Intent.ACTION_OPEN_DOCUMENT);
            picker.addCategory(Intent.CATEGORY_OPENABLE);
            picker.setType("*/*");
            startActivityForResult(picker, 1);
        });
        layout.addView(status); layout.addView(choose); setContentView(layout);
    }
    private void copyAssets(String source, File target) throws IOException {
        String[] children = getAssets().list(source);
        if (children.length > 0) {
            if (!target.isDirectory() && !target.mkdirs()) throw new IOException("Cannot create asset directory");
            for (String child : children) copyAssets(source + "/" + child, new File(target, child));
        } else {
            try (InputStream in = getAssets().open(source); OutputStream out = new FileOutputStream(target)) {
                byte[] buffer = new byte[65536]; int n;
                while ((n = in.read(buffer)) != -1) out.write(buffer, 0, n);
            }
        }
    }
    @Override protected void onActivityResult(int request, int result, Intent data) {
        super.onActivityResult(request, result, data);
        if (request != 1 || result != RESULT_OK || data == null) return;
        choose.setEnabled(false); status.setText("Preparing game…");
        new Thread(() -> {
            try {
                ByteArrayOutputStream bytes = new ByteArrayOutputStream();
                try (InputStream in = getContentResolver().openInputStream(data.getData())) {
                    byte[] buffer = new byte[8192]; int n;
                    while ((n = in.read(buffer)) != -1) {
                        bytes.write(buffer, 0, n);
                        if (bytes.size() > 262144) throw new IOException("Expected a 256 KiB Space Manbow ROM");
                    }
                }
                byte[] rom = bytes.toByteArray();
                StringBuilder hash = new StringBuilder();
                for (byte b : MessageDigest.getInstance("SHA-256").digest(rom)) hash.append(String.format("%02x", b & 255));
                if (!hash.toString().equals("bca5696ebbf4a3493bb226baa03ba8f8c5cc4876a4ad0eaa9722f583a42192b0")) throw new IOException("Unsupported Space Manbow ROM");
                copyAssets("assets", new File(getFilesDir(), "assets"));
                try (OutputStream out = new FileOutputStream(new File(getFilesDir(), "space_manbow.rom"))) { out.write(rom); }
                runOnUiThread(() -> { choose.setEnabled(true); startActivity(new Intent(this, GameActivity.class)); });
            } catch (Exception error) {
                runOnUiThread(() -> { status.setText(error.getMessage()); choose.setEnabled(true); });
            }
        }).start();
    }
}
