using UnityEngine;
using System.Collections;

public class AIMoveBackForth : MonoBehaviour {
	
	public float ThrustForce = 1.0f;
	public float XLimit = 10.0f;
	bool moveLeft = true;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		
		if (transform.position.x < -XLimit)
			moveLeft = false;
		else if (transform.position.x > XLimit)
			moveLeft = true;
		
		Vector3 thrustVect = new Vector3();
		if (moveLeft)
			thrustVect += Vector3.left;
		else
			thrustVect -= Vector3.left;
		
		Rigidbody body = (Rigidbody)gameObject.GetComponent("Rigidbody");
		
		body.AddForce(thrustVect * ThrustForce);
	}
}
