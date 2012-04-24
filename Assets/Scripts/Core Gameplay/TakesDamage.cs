using UnityEngine;
using System.Collections;

public class TakesDamage : MonoBehaviour {
	
	public int Hitpoints;
	public int Score = 0;
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
				Instantiate(DeathEffect, transform.position, Quaternion.identity);
			}
			if (Powerup != null)
			{
				var v = Random.value;
				if (v < DropChance)
				{
					Instantiate(Powerup, transform.position, Quaternion.identity);
				}
			}
            if (Score > 0)
            {
                Quaternion up = Quaternion.Euler(90, 0, 0);
                var text = Instantiate(Resources.Load("FloatingText"), transform.position, up) as GameObject;
                text.GetComponent<TextMesh>().text = Score.ToString();
            }
			
			Destroy(gameObject);
			PointsSingleton.Instance.ScorePoints(Score);
		}
	}
}
