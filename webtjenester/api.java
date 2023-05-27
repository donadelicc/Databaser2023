import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

import java.io.FileReader;

public class JsonReader {
    public static void main(String[] args) {
        try {
            // Angi banen til JSON-filen
            String filePath = "create_docs/Preben/json/customer.json";

            // Les JSON-filen ved hjelp av JSONTokener
            JSONTokener tokener = new JSONTokener(new FileReader(filePath));
            JSONObject jsonObject = new JSONObject(tokener);

            // Hent data fra JSON-filen
            String name = jsonObject.getString("name");
            int age = jsonObject.getInt("age");
            JSONArray hobbies = jsonObject.getJSONArray("hobbies");

            // Skriv ut dataene
            System.out.println("Navn: " + name);
            System.out.println("Alder: " + age);
            System.out.println("Hobbyer:");
            for (int i = 0; i < hobbies.length(); i++) {
                System.out.println("- " + hobbies.getString(i));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
