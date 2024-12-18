const menu = {
    list() {
        return [
    {
        "backMenu":[
        ],
        "frontMenu":[
        ],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"否",
        "hasFrontRegister":"否",
        "roleName":"管理员",
        "tableName":"users"
    },
    {
        "backMenu":[
			{
                "child":[
                    {
						"appFrontIcon":"cuIcon-form",
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"在线报修",
                        "menuJump":"列表",
                        "tableName":"guzhangshangbao"
                    }
                ],
                "menu":"在线报修"
            }
            ,
            {
                "child":[
                    {
						"appFrontIcon":"cuIcon-activity",
                        "buttons":[
                            "查看"
                        ],
                        "menu":"公告",
                        "menuJump":"列表",
                        "tableName":"news"
                    }
                ],
                "menu":"公告"
            }
            ,
            {
                "child":[
                    {
						"appFrontIcon":"cuIcon-evaluate",
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"维修人员评价",
                        "menuJump":"列表",
                        "tableName":"weixiuyuanCommentback"
                    }
                ],
                "menu":"维修人员评价"
            }
        ],
        "frontMenu":[
        ],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"是",
        "hasFrontRegister":"是",
        "roleName":"学生",
        "tableName":"yonghu"
    }
]

	}
}
export default menu;