﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VMS.DTO
{
    public class BaseResponseDTO
    {
        public BaseResponseDTO()
        {
            success = true;
            message = string.Empty;
        }
        public bool success { get; set; }

        public string message{get;set;}
    }
}
