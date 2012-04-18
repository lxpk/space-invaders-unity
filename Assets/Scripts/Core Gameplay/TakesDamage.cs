using UnityEngine;
using System.Collections;

public class TakesDamage : MonoBehaviour {
	
	public int Hitpoints;
	public int Score;
	int damage = 0;
	
	public Transform DeathEffect;
	public Transform Powerup;
	public float DropChance = 0.0f;
	
	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	bool dead = false;
	void OnDamage(int amount) {
		damage += amount;
		if (damage >= Hitpoints && !dead)
		{
			dead = true;
			if (DeathEffect != null)
			{
				Transform death = Instantiate(DeathEffect, transform.position, Quaternion.identity) as Transform;
				//death.gameObject.GetComponent<ParticleSystem>().GetComponent<ParticleAnimator>().autodestruct = true;
			}
			if (Powerup != null)
			{
				var v = Random.value;
				if (v < DropChance)
				{
					Instantiate(Powerup, transform.position, Quaternion.identity);
				}
			}
			
			Destroy(gameObject);
			PointsSingleton.Instance.ScorePoints(Score);
		}
	}
}
