using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class gameWin : MonoBehaviour
{

    public GameObject GameWin;
    private void OnTriggerEnter(Collider collider)
    {
        GameWin.SetActive(true);
        Time.timeScale = 0f;
    }
}
