using UnityEngine;
using System.Collections;


public class RapidFire : MonoBehaviour {
	
	public float Duration;
	public float SpeedFactor;
	
	float deathTime;
	float oldRefireDelay;
	
	// Use this for initialization
	void Start () {
		var sc = gameObject.GetComponent<ShootControls>();
		oldRefireDelay = sc.RefireDelay;
		sc.RefireDelay *= SpeedFactor;
		deathTime = Time.time + Duration;
	}
	
	public void RefreshTimer()
	{
		deathTime = Time.time + Duration;
	}
	
	void Deactivate(){
		var sc = gameObject.GetComponent<ShootControls>();
			sc.RefireDelay = oldRefireDelay;
			Destroy(this);
	}
	
	// Update is called once per frame
	void Update () {
		if (Time.time > deathTime){
			Deactivate();
		}
	}
}

public class PowerupRapidFire : MonoBehaviour {

	public float Duration;
	public float SpeedFactor;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	void ActivateEffect(GameObject player)
	{
		if (player.GetComponent<RapidFire>() != null) {
			player.GetComponent<RapidFire>().RefreshTimer();
		}
		else {
			var rf = player.AddComponent<RapidFire>();
			rf.Duration = Duration;
			rf.SpeedFactor = SpeedFactor;
		}
	}
	
	void OnTriggerEnter(Collider other)
	{		
		if (other.gameObject.tag == "Player")
		{
			ActivateEffect(other.gameObject);
            Quaternion up = Quaternion.Euler(90, 0, 0);
            var text = Instantiate(Resources.Load("FloatingText"), transform.position, up) as GameObject;
            text.GetComponent<TextMesh>().text = "Rapid Fire";
			Destroy (this.gameObject);
		}
	}
}
