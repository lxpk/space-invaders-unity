using UnityEngine;
using System.Collections;

public class ParticleAutodestruct : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (!particleSystem.IsAlive()) {
			Destroy(this.gameObject);
		}
	}
}
