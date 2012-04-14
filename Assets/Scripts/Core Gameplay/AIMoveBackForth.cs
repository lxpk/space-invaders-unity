using UnityEngine;
using System.Collections;

public class AIMoveBackForth : MonoBehaviour {
	
	public float ThrustForce = 1.0f;
	public float XLimit = 10.0f;
	public float MoveDownTime = 0.0f;
	static float moveDown = -1.0f;
	static bool moveLeft = true; //static because we want ANY unit moving outside of range to rearrange the whole formation

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		
		if (moveLeft && transform.position.x < -XLimit)
		{
			moveDown = MoveDownTime;
			moveLeft = false;
		}
		else if (!moveLeft && transform.position.x > XLimit)
		{
			moveDown = MoveDownTime;
			moveLeft = true;
		}
		
		Vector3 thrustVect = new Vector3();
		if (moveLeft && moveDown <0)
			thrustVect += Vector3.left;
		else if (moveDown < 0)
			thrustVect -= Vector3.left;
		else
		{
			thrustVect = Vector3.back;
			moveDown -= Time.deltaTime;
		}
		
		Rigidbody body = (Rigidbody)gameObject.GetComponent("Rigidbody");
		
		body.AddForce(thrustVect * ThrustForce);
	}
}
