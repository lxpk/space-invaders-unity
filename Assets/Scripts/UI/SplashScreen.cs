using UnityEngine;
using System.Collections;

public class SplashScreen : MonoBehaviour {

    public Texture SplashTexture;
    public float SplashScale;
    public float TexRatio = 1.0f;
	public float SplashDuration;
	float endTime;
	// Use this for initialization
	void Start () {
		endTime = Time.time + SplashDuration;
	}
	
	// Update is called once per frame
	void Update () {
		if (Time.time > endTime)
			Application.LoadLevel("menu");
	}


    void OnGUI()
    {
        GUI.DrawTexture(
            new Rect(
                Screen.width * (1 - SplashScale) / 2,
                Screen.height * (1 - SplashScale * TexRatio) / 2,
                Screen.width * SplashScale,
                Screen.height * SplashScale * TexRatio),
            SplashTexture);
    }
}
