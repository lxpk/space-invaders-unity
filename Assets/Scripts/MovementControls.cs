using UnityEngine;
using System.Collections;

public class MovementControls : MonoBehaviour {
	
	public float ThrustForce = 1.0f;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		Vector3 thrustVect = new Vector3();
		if (Input.GetButton("Left"))
			thrustVect += Vector3.left;
		if (Input.GetButton("Right"))
			thrustVect -= Vector3.left;
		
		Rigidbody body = (Rigidbody)gameObject.GetComponent("Rigidbody");
		
		body.AddForce(thrustVect * ThrustForce);
	}
}
