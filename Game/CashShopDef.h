/*
*
* Copyright (C) 2008-2017 Dimension Gamers <http://www.dimensiongamers.net>
*
* File: "CashShopDef.h"
*
*/

#ifndef CASH_SHOP_DEF_H
#define CASH_SHOP_DEF_H

enum CashShopCoin
{
	CASH_SHOP_COIN_C,
	CASH_SHOP_COIN_P,
	CASH_SHOP_COIN_GOBLIN,
	CASH_SHOP_COIN_ZEN,
	CASH_SHOP_COIN_RUUD,
	CASH_SHOP_COIN_BLESS,
	CASH_SHOP_COIN_SOUL,
	CASH_SHOP_COIN_CHAOS,
	CASH_SHOP_COIN_GUARDIAN,
	CASH_SHOP_COIN_MAX
};

enum CashShopBuyType
{
	CASH_SHOP_BUY_TYPE_INVENTORY,
	CASH_SHOP_BUY_TYPE_LIST,
	CASH_SHOP_BUY_TYPE_USE,
	CASH_SHOP_BUY_TYPE_MAX
};

enum CashShopUseType
{
	CASH_SHOP_USE_TYPE_INVENTORY,
	CASH_SHOP_USE_TYPE_BUFF,
	CASH_SHOP_USE_TYPE_EFFECT,
	CASH_SHOP_USE_TYPE_MAX
};

enum CashShopFlag
{
	CASH_SHOP_FLAG_NONE,
	CASH_SHOP_FLAG_GIFT					= 1 << 0,
	CASH_SHOP_FLAG_BUY_DISABLED			= 1 << 1,
	CASH_SHOP_FLAG_USE_DISABLED			= 1 << 2,
	CASH_SHOP_FLAG_REPLACE_BUFF			= 1 << 3,
	CASH_SHOP_FLAG_EXPIRABLE			= 1 << 4,
	CASH_SHOP_FLAG_ADD_BUFF_TIME		= 1 << 5,
	CASH_SHOP_FLAG_ACCOUNT_BOUND		= 1 << 6,
	CASH_SHOP_FLAG_NO_DISCOUNT			= 1 << 7, //- Solo aplica al package
	CASH_SHOP_FLAG_DISPLAY_COUNT		= 1 << 8,
};

enum CashShopDate
{
	CASH_SHOP_DATE_ITEM,
	CASH_SHOP_DATE_BANNER,
};

enum CashShopItemListId
{
	CASH_SHOP_ITEM_LIST_GIFT = 0x47,
	CASH_SHOP_ITEM_LIST_INVENTORY = 0x53,
};

#define CASH_SHOP_PAGE_SIZE				9

static const int32 credit_coin[CREDIT_COIN_LEVEL_MAX + 1] = { 1, 5, 10, 50, 100, 500, 1000, 5000, 10000, 50000, 100000 };

#endif