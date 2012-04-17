using UnityEngine;
using System.Collections;

public class MainMenu : MonoBehaviour {

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
		
		GUI.Label(WindowRect (0.4f, 0.1f, 0.2f, 0.1f), "High Score: " + PlayerPrefs.GetInt("HScore"));
		
		if (GUI.Button(WindowRect (0.3f, 0.3f, 0.4f, 0.2f), "Start Game")){
			Application.LoadLevel("default");
		}
		
		if (GUI.Button(WindowRect (0.3f, 0.6f, 0.4f, 0.2f), "Quit Game")){
			Application.Quit();
		}
	}
}
