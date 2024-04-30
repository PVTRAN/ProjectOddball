using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using Unity.VisualScripting;
using UnityEditor;
using UnityEditor.Tilemaps;
using UnityEngine;
using UnityEngine.UIElements;
using Debug = UnityEngine.Debug;

public class PlayerLasso : MonoBehaviour
{
    public GameObject prefab;
    public GameObject objLasso;
    public Transform  LassoLocation;
    public Transform  LassoBackLocation;
    public GameObject player;

    private GameState gState;

    public bool Retrieve { get; set; }
    private Vector3 VelocityZero = Vector3.zero;
    private bool FunctionDoOnce = false;
    // Start is called before the first frame update

    private void Awake()
    {

        if(player == null)
            player = GameManager.instance.Player;

        GameManager.OnGameStateChanged += GameManagerOnStateChanged;
        objLasso = Instantiate(prefab, LassoLocation.position, Quaternion.identity);
        if(objLasso.GetComponent<Lasso>().pLasso == null)
        {
            objLasso.GetComponent<Lasso>().pLasso = this;
        }
        objLasso.SetActive(false);
        Retrieve = false;
    }


    // Update is called once per frame
    void Update()
    {
        if (gState == GameState.PlayState)
        {
            if(Input.GetMouseButtonDown(0)) 
            {
                FunctionDoOnce = true;
                LassoActive();
            }
            if(Input.GetMouseButton(0))
            {
                objLasso.transform.position = LassoLocation.position;
            }
            if(Input.GetKeyDown(KeyCode.R))
            {
                Retrieve = true;
            }

            if(Retrieve)
            {
                objLasso.transform.position = Vector3.SmoothDamp(objLasso.transform.position, LassoBackLocation.position, ref VelocityZero, Time.deltaTime * 0.1f);
                if(Mathf.Abs(Vector3.Distance(objLasso.transform.position, LassoBackLocation.position)) < 0.25f)
                {
                    Vector3 forward = new Vector3(2, 0, 0);
                    objLasso.transform.position += forward;
                    Retrieve = false;
                    objLasso.SetActive(false);
                }
            }

        }
        else if (gState == GameState.DeathState)
        {

        }
    }



    /***************************************/
    private void LassoActive()
    {
        FunctionDoOnce = true;
        if(FunctionDoOnce)
        {
            objLasso.SetActive(true);
            FunctionDoOnce = false;
        }
    }
    private void GameManagerOnStateChanged(GameState state)
    {
        gState = state;
    }
    private void OnDestroy()
    {
        GameManager.OnGameStateChanged -= GameManagerOnStateChanged;
    }




}
