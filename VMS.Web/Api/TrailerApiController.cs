﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Http;
using VMS.Controllers;
using VMS.DTO;
using VMS.DTO.Trailer;
using VMS.IServices;
using VMS.Model;
using VMS.ServiceProvider;
using VMS.Utils;

namespace VMS.Api
{
    public class TrailerApiController : BaseApiController
    {
        /// <summary>
        /// 查询拖车记录
        /// </summary>
        /// <returns></returns>
        public GridResponseDTO<TrailerDTO> QueryTrailer([FromBody]TrailerQueryDTO trailerQueryDTO)
        {
            var ret = new GridResponseDTO<TrailerDTO>();
            try
            {
                var httpRequest = HttpContext.Current.Request;
                var sb = new StringBuilder();
                var paramlst = new List<SqlParam>();
                int total = 0;
                var pageIndex = CommonHelper.GetInt(httpRequest.Form["page"], 1);
                var pageSize = CommonHelper.GetInt(httpRequest.Form["rows"], 10);

                if (httpRequest["trailerNo"] != null && !string.IsNullOrEmpty(httpRequest["trailerNo"]))
                {
                    sb.Append(" and trailer_no = @trailerNo");
                    paramlst.Add(new SqlParam("@trailerNo", Decimal.Parse(httpRequest["trailerNo"])));
                }
                if (trailerQueryDTO != null && !string.IsNullOrEmpty(trailerQueryDTO.startTime)) {
                    sb.Append(" and trailer_date > @startTime");
                    paramlst.Add(new SqlParam("@startTime", trailerQueryDTO.startTime));
                }
                if (trailerQueryDTO != null && !string.IsNullOrEmpty(trailerQueryDTO.endTime))
                {
                    sb.Append(" and trailer_date < @endTime");
                    paramlst.Add(new SqlParam("@endTime", trailerQueryDTO.endTime));
                }

                string err = string.Empty;
                var obj = Instance<ITrailerService>.Create;
                var lst = obj.QueryTrailer(sb, paramlst, pageIndex, pageSize, ref total);
                ret.total = total;
                ret.rows.AddRange(lst.Select(e => new TrailerDTO()
                {
                    trailerNo = e.trailer_no,
                    trailerDate = e.trailer_date,
                    number = e.trailer_number,
                    totalMotorcycle = e.trailer_totalmotorcycle,
                    tricycle = e.trailer_tricycle,
                    batteryMotorcycle = e.trailer_batterymotorcycle,
                    totalVehicle = e.trailer_totalvehicle,
                    bigCar = e.trailer_bigcar,
                    smallCar=e.trailer_smallcar,
                    tractor=e.trailer_tractor,
                    totalTrailer=e.trailer_totaltrailer,
                    remark=e.remark
                }));
                return ret;
            }
            catch (Exception ex)
            {
                ret.message = ex.Message;
                ret.success = false;
                return ret;
            }
        }



        /// <summary>
        /// 添加拖车记录
        /// </summary>
        /// <returns></returns>
        [System.Web.Mvc.HttpPost]
        public BaseResponseDTO AddTrailer([FromBody]TrailerDTO data)
        {
            var ret = new BaseResponseDTO();

            try
            {
                if (data == null) {
                    ret.message = "添加失败";
                    ret.success = false;
                    return ret;
                }

                    data.createId = operInfo.user_id;
                    var service = Instance<ITrailerService>.Create;
                    bool res = service.AddTrailer(data);

                    if (res)
                    {
                        return ret;
                    }
                    else
                    {
                        ret.message = "添加失败";
                        ret.success = false;
                        return ret;
                    }
            }
            catch (Exception ex)
            {

                ret.success = false;
                ret.message = ex.Message;
                return ret;
            }
        }

        /// <summary>
        /// 修改拖车记录
        /// </summary>
        /// <param name="data"></param>
        /// <returns></returns>
        [System.Web.Mvc.HttpPost]
        public BaseResponseDTO upDate([FromBody]TrailerDTO data)
        {
            var ret = new BaseResponseDTO();
            try
            {
                #region 参数检验
                if (data == null)
                {
                    ret.success = false;
                    ret.message = "无法获取到请求参数!";
                    return ret;
                }
                #endregion


                var service = Instance<ITrailerService>.Create;
                ret.success = service.UpdateTrailer(data);
                return ret;
            }
            catch (Exception ex)
            {
                ret.message = ex.Message;
                ret.success = false;
                return ret;
            }
        }

        [HttpGet]
        public BaseResponseDTO DeleteTrailer(string id)
        {
            var ret = new BaseResponseDTO();
            try
            {
                if (id == null || id.Equals("null")) {
                    ret.message = "删除失败";
                    ret.success = false;
                    return ret;
                }
                var service = Instance<ITrailerService>.Create;
                bool res = service.DeleteTrailer(id);

                if (res)
                {
                    return ret;
                }
                else
                {
                    ret.message = "删除失败";
                    ret.success = false;
                    return ret;
                }
            }
            catch (Exception ex)
            {
                ret.success = false;
                ret.message = ex.Message;
                return ret;
            }
        }

        /// <summary>
        /// 根据id查询拖车记录
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public BaseReportDTO QueryInfo([FromBody]TrailerQueryDTO trailerQueryDTO)
        {
            var ret = new BaseReportDTO();
            try
            {
                //if (trailerQueryDTO == null || trailerQueryDTO.e)
                //{
                //    ret.message = "查询失败";
                //    ret.success = false;
                //    return ret;
                //}
                var service = Instance<ITrailerService>.Create;
                List<TrailerDTO> trailerDTO = new List<TrailerDTO>();
                trailerDTO = service.QueryInfo(trailerQueryDTO);
                if (trailerDTO == null || trailerDTO.Count == 0) { return ret; }
                ret.rows =trailerDTO;
                return ret;
            }
            catch (Exception ex)
            {
                ret.success = false;
                ret.message = ex.Message;
                return ret;
            }
        }
    }
}