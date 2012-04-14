using UnityEngine;
using System.Collections;

public class DealsDamage : MonoBehaviour {
	
	public int DamageAmount;
	public bool HurtsPlayer;
	public bool HurtsEnemy;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {

	}
	
	void DealDamage(Collider other)
	{
		other.gameObject.SendMessage("OnDamage", DamageAmount);
		Destroy(gameObject);
	}
	
	void OnTriggerEnter(Collider other)
	{		
		if (other.gameObject.tag == "Player" && HurtsPlayer)
			DealDamage(other);
		if (other.gameObject.tag == "Enemy" && HurtsEnemy)
			DealDamage(other);	
	}
}
