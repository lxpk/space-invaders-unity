using UnityEngine;
using System.Collections;

public class TimedLife : MonoBehaviour {
	
	public float LifeTime;
	float initTime;
	
	// Use this for initialization
	void Start () {
		initTime = Time.time;
	}
	
	// Update is called once per frame
	void Update () {
		if (Time.time - initTime > LifeTime)
			Destroy(gameObject);
	}
}
