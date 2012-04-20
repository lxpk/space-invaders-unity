using UnityEngine;
using System.Collections;

public class ShootControls : MonoBehaviour {
	
	public Rigidbody BulletType;
	public float ShootForce;
	public float RefireDelay;
	float nextFireTime = 0.0f;
	
	public AudioClip FireSound;
	
	// Use this for initialization
	void Start () {
	    
	}
	
	// Update is called once per frame
	void Update () {
	
		if (Input.GetButton("Shoot") || Input.touchCount > 0)
		{
			if (Time.time  > nextFireTime)
			{
				nextFireTime = Time.time + RefireDelay;
				var bullet = Instantiate(BulletType, transform.position, transform.rotation) as Rigidbody;
				bullet.AddForce(transform.forward * ShootForce);
				
				if (FireSound != null)
				{
					var source = gameObject.GetComponent<AudioSource>();
					if (source != null)
						source.PlayOneShot(FireSound);
				}
			}
		}
	}
}
