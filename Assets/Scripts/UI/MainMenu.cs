using UnityEngine;
using System.Collections;

public class MainMenu : MonoBehaviour {


    public Texture TitleTexture;
    public int TitleWidth;
    public int TitleHeight;
    public int TitleTop;

    public Texture StartGameTex;
    public Texture SettingsTex;
    public Texture QuitTex;

    public int ButtonWidth;
    public int ButtonHeight;
    public int ButtonTop;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	Rect WindowRect(float left, float top, float width, float height){
		return new Rect(left * Screen.width, top * Screen.height, width * Screen.width, height * Screen.height);
	}
	
	void OnGUI (){

        //Title
        GUI.DrawTexture(
            new Rect(
                (Screen.width - TitleWidth) / 2, 
                TitleTop, 
                TitleWidth, 
                TitleHeight), 
            TitleTexture);

		GUI.Label(WindowRect (0.4f, 0.1f, 0.2f, 0.1f), "High Score: " + PlayerPrefs.GetInt("HScore"));

        if (GUI.Button(
            new Rect(
                (Screen.width - ButtonWidth) / 2, 
                ButtonTop, 
                ButtonWidth, 
                ButtonHeight), 
            StartGameTex))
        {
			Application.LoadLevel("default");
		}

        if (GUI.Button(
            new Rect(
                (Screen.width - ButtonWidth) / 2,
                ButtonTop + ButtonHeight, 
                ButtonWidth, 
                ButtonHeight), 
            SettingsTex))
        {
            Application.LoadLevel("default");
        }


        if (GUI.Button(
            new Rect(
                (Screen.width - ButtonWidth) / 2, 
                ButtonTop + 2 * ButtonHeight,
                ButtonWidth, 
                ButtonHeight), 
            QuitTex))
        {
			Application.Quit();
		}
	}
}
