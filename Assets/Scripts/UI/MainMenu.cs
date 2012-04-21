using UnityEngine;
using System.Collections;

public class MainMenu : MonoBehaviour {


    public Texture TitleTexture;
    public float TitleWidth;
    public float TitleHeight;
    public float TitleTop;

    public Texture StartGameTex;
    public Texture SettingsTex;
    public Texture QuitTex;

    public float ButtonWidth;
    public float ButtonHeight;
    public float ButtonTop;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	Rect WindowRect(float left, float top, float width, float height){
		return new Rect(left * Screen.width, top * Screen.height, width * Screen.width, height * Screen.height);
	}

    Rect CenteredScreenSpace(float top, float width, float height)
    {
        return new Rect(Screen.width * (1 - width) / 2, top * Screen.height, width * Screen.width, height * Screen.height);
    }

    bool settings = false;


    void GUIMainMenu()
    {
        //Title
        GUI.DrawTexture(
            CenteredScreenSpace(
                TitleTop,
                TitleWidth,
                TitleHeight),
            TitleTexture);

        GUI.Label(CenteredScreenSpace(0.8f, 0.6f, 0.1f), "High Score: " + PlayerPrefs.GetInt("HScore"));

        if (GUI.Button(
            CenteredScreenSpace(
                ButtonTop,
                ButtonWidth,
                ButtonHeight),
            StartGameTex))
        {
            Application.LoadLevel("default");
        }

        if (GUI.Button(
            CenteredScreenSpace(
                ButtonTop + ButtonHeight,
                ButtonWidth,
                ButtonHeight),
            SettingsTex))
        {
            LoadSettings();
            settings = true;
        }


        if (GUI.Button(
            CenteredScreenSpace(
                ButtonTop + 2 * ButtonHeight,
                ButtonWidth,
                ButtonHeight),
            QuitTex))
        {
            Application.Quit();
        }
    }


    
    string inputMode;

    void SaveSettings()
    {
        PlayerPrefs.SetString("InputMode", inputMode);
    }

    void LoadSettings()
    {
        inputMode = "Tilt";
        if (PlayerPrefs.HasKey("InputMode"))
			inputMode = PlayerPrefs.GetString("InputMode");
		
    }

    void GUISettings()
    {
        if (GUI.Button(
            CenteredScreenSpace(
                ButtonTop,
                ButtonWidth,
                ButtonHeight),
            "Input: " + inputMode))
        {
            if (inputMode == "Tilt")
                inputMode = "Swipe";
            else if (inputMode == "Swipe")
                inputMode = "Tilt";
        }

        if (GUI.Button(
            CenteredScreenSpace(
                ButtonTop + ButtonHeight,
                ButtonWidth,
                ButtonHeight),
            "Main Menu"))
        {
            SaveSettings();
            settings = false;
        }

    }

	void OnGUI ()
    {
        if (!settings)
            GUIMainMenu();
        else
            GUISettings();
	}
}
