using UnityEngine;
using System.Collections;

public class TakesDamage : MonoBehaviour {
	
	public int Hitpoints;
	int damage = 0;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	void OnDamage(int amount) {
		damage += amount;
		if (damage > Hitpoints)
			Destroy(gameObject);
	}
}
