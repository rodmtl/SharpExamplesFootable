using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PrometourTDA.Model
{
    public class Repository
    {
        /*TODO: update metod to retrieve user List from DB*/
        public List<Member> GetMembers()
        {
            return new List<Member> {
                 new Member
                 {
                    MemberId = 1, FirstName = "Jeffrey", MiddleName = "Preston", 
                    LastName = "Naranjas", Email = "abc1@xyz.com", Password ="Amazon123", MemberType="Admin"
                 },
                 new Member
                 {
                    MemberId = 2, FirstName = "Satyanarayana", MiddleName = "", 
                    LastName = "Pinias", Email = "abc2@xyz.com",Password ="Amazon123", MemberType="Admin"
                 },
                 new Member
                 {
                    MemberId = 3, FirstName = "Adele", MiddleName = "Laurie Blue", 
                    LastName = "Manzanas", Email = "abc3@xyz.com",Password ="Amazon123", MemberType="Guide"
                 },
                 new Member
                 {
                    MemberId = 4, FirstName = "David" ,MiddleName = "Robert Joseph",
                    LastName = "Duraznos", Email = "abc4@xyz.com",Password ="Amazon123", MemberType="Guide"
                 },
                 new Member
                 {
                    MemberId = 5, FirstName = "Antonio" ,MiddleName = "Robert Joseph",
                    LastName = "Duraznos", Email = "abc4@xyz.com",Password ="Amazon123", MemberType="Guide"
                 },
                 new Member
                 {
                    MemberId = 6, FirstName = "Isabellino" ,MiddleName = "Robert Joseph",
                    LastName = "Duraznos", Email = "abc4@xyz.com",Password ="Amazon123", MemberType="Guide"
                 }                 ,
                 new Member
                 {
                    MemberId = 7, FirstName = "Andres" ,MiddleName = "Robert Joseph",
                    LastName = "Duraznos", Email = "abc4@xyz.com",Password ="Amazon123", MemberType="Guide"
                 }
            };
        }  


    }
}