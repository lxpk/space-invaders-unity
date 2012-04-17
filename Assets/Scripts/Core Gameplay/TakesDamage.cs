using UnityEngine;
using System.Collections;

public class TakesDamage : MonoBehaviour {
	
	public int Hitpoints;
	public int Score;
	int damage = 0;
	
	public Transform DeathEffect;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	void OnDamage(int amount) {
		damage += amount;
		if (damage >= Hitpoints)
		{
			Destroy(gameObject);
			PointsSingleton.Instance.ScorePoints(Score);
			if (DeathEffect != null)
			{
				Transform death = Instantiate(DeathEffect, transform.position, Quaternion.identity) as Transform;
				death.gameObject.GetComponent<ParticleSystem>().GetComponent<ParticleAnimator>().autodestruct = true;
			}
		}
	}
}
