using UnityEngine;
using System.Collections;

public class ShootControls : MonoBehaviour {
	
	public Rigidbody BulletType;
	public float ShootForce;
	public float RefireDelay;
	float lastFireTime = 0.0f;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
		if (Input.GetButton("Shoot"))
		{
			if (Time.time - lastFireTime > RefireDelay)
			{
				lastFireTime = Time.time;
				var bullet = Instantiate(BulletType, transform.position, transform.rotation) as Rigidbody;
				bullet.AddForce(transform.forward * ShootForce);
			}
		}
	}
}
