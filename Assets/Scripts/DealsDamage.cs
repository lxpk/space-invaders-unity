using UnityEngine;
using System.Collections;

public class DealsDamage : MonoBehaviour {
	
	public int DamageAmount;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {

	}
	
	void OnTriggerEnter(Collider other)
	{		
		other.gameObject.SendMessage("OnDamage", DamageAmount);
		Destroy(gameObject);
	}
}
