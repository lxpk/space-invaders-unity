using UnityEngine;
using System.Collections;

public class MovementControls : MonoBehaviour {
	
	public float ThrustForce = 1.0f;
	public float MovementLimit = 10.0f;
	
	// Use this for initialization
	void Start () {
	
	}
	
	const float accelerometerUpdate = 1.0f / 60.0f;
	const float lowPassKernelWidth = 0.25f;
	const float lowPassFilterFactor = accelerometerUpdate / lowPassKernelWidth;
	Vector3 lowPassValue = Vector3.zero;
	
	Vector3 LowPassAccel() {
		lowPassValue = Vector3.Lerp(lowPassValue, Input.acceleration, lowPassFilterFactor);		
		return lowPassValue;
	}
	
	// Update is called once per frame
	void Update () {
		Vector3 thrustVect = new Vector3();
		if (Input.GetButton("Left"))
			thrustVect += Vector3.left;
		if (Input.GetButton("Right"))
			thrustVect -= Vector3.left;
		
		//strip out Y and Z components. Use right axis and direction. Also give it a bit more oomph
		thrustVect +=  new Vector3(-LowPassAccel().y*2, 0.0f, 0.0f); 
		
		if (transform.position.x < -MovementLimit)
			thrustVect += Vector3.right * (1 - transform.position.x + MovementLimit);
		if (transform.position.x > MovementLimit)
			thrustVect -= Vector3.right * (1 + transform.position.x - MovementLimit);
		
		
		if (thrustVect.magnitude > 1)
			thrustVect.Normalize();
		
		
		
		Rigidbody body = (Rigidbody)gameObject.GetComponent("Rigidbody");
		
		body.AddForce(thrustVect * ThrustForce);
	}
}
