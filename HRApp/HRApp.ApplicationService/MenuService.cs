﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HRApp.Model;
using HRApp.IApplicationService;
using IHRApp.Infrastructure;
using Infrastructure.ExtService;
namespace HRApp.ApplicationService
{
    public class MenuService:IMenuService
    {
        public string SqlConnString
        {
            get;
            set;
        }
        public IMenuRepository menuRepository;
        public MenuService(IMenuRepository menu)
        {
            menuRepository = menu;
        }
        public Common.Data.JsonData Add(Menu model)
        {
            Common.Data.JsonData json = new Common.Data.JsonData();
            if (string.IsNullOrEmpty(model.Code))
            {//中文转拼音
                model.Code = model.Name.TextConvertChar(true);// 转换形式 助手  =ZhuShou
            }
            model.CreateTime = DateTime.Now;
            json.Success = menuRepository.Add(model);
            return json;
        }


        public List<Menu> QueryWhere(Menu model)
        {
            throw new NotImplementedException();
        }
    }
}
