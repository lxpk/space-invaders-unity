using UnityEngine;
using System.Collections;

public class SplashScreen : MonoBehaviour {
	
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
}
