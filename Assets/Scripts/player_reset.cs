using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class player_reset : MonoBehaviour
{
    [SerializeField] private Vector3 SpawnPoint;
    [SerializeField] private GameObject GameWin;
    [SerializeField] private TextMeshProUGUI time;
    
    //called before start
    void Awake()
    {
        SpawnPoint = transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter(Collider collision)
    {
        if (collision.gameObject.name == "Respawn")
        {
            transform.position = SpawnPoint;
        }
        if (collision.gameObject.name == "CheckPoint")
        {
            SpawnPoint = transform.position;
            collision.enabled = false;
        }
        if(collision.gameObject.name == "GameWin")
        {
            GameWin.SetActive(true);
            time.text = $"{TimeManager.Hour:00}:{TimeManager.Minute:00}";
            if (GameWin.activeSelf == true)
            {
                
                 Time.timeScale = 0f;

            }
        }
    }
}
