using UnityEngine;
using System.Collections;

public class AIFireRandom : MonoBehaviour {
	
	public Rigidbody BulletType;
	public float ShootForce;
	public float RefireDelayMax;
	
	public AudioClip FireSound;
	
	float nextFireTime = 0.0f;
	// Use this for initialization
	void Start () {
		nextFireTime = Time.time + Random.value * RefireDelayMax;
	}
	
	// Update is called once per frame
	void Update () {
		if (Time.time > nextFireTime)
		{
			nextFireTime = Time.time + Random.value * RefireDelayMax;
			var bullet = Instantiate(BulletType, transform.position, transform.rotation) as Rigidbody;
			bullet.AddForce(-transform.forward * ShootForce);
			
				if (FireSound != null)
				{
					var source = gameObject.GetComponent<AudioSource>();
					if (source != null)
						source.PlayOneShot(FireSound);
				}
		}
	}
}
