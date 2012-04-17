using UnityEngine;
using System.Collections;

public class GameOver : MonoBehaviour {

	public Transform PlayerObject;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (PlayerObject == null)
		{
			PointsSingleton.Instance.SaveScore();
			enableUI = true;
		}
	}
	
	Rect WindowRect(float left, float top, float width, float height){
		return new Rect(left * Screen.width, top * Screen.height, width * Screen.width, height * Screen.height);
	}
	
	bool enableUI = false;
	void OnGUI (){
		
		if (enableUI == true){
			int score = PointsSingleton.Instance.Points;
			if (GUI.Button(WindowRect (0.3f, 0.2f, 0.4f, 0.3f), "Game Over!\nYou Scored: "+score)){
				Application.LoadLevel("menu");
			}
		}
	}

}
