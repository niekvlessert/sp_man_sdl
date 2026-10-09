package nl.niekvlessert.spacemanbow;
import org.libsdl.app.SDLActivity;
public class GameActivity extends SDLActivity {
    @Override protected String[] getLibraries() { return new String[] {"SDL2", "SDL2_ttf", "main"}; }
    @Override protected String[] getArguments() { return new String[] {getFilesDir() + "/space_manbow.rom"}; }
}
