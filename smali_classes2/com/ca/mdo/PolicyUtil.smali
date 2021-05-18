.class public Lcom/ca/mdo/PolicyUtil;
.super Ljava/lang/Object;
.source "PolicyUtil.java"


# static fields
.field public static mProfileUrl:Ljava/lang/String;

.field private static policyManager:Lcom/ca/mdo/PolicyManager;

.field public static refreshPolicy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ca/mdo/PolicyUtil;->refreshPolicy:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getNewPolicy(Landroid/content/Context;)Lcom/ca/mdo/PolicyManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    new-instance v0, Lcom/ca/mdo/PolicyManager;

    sget-object v1, Lcom/ca/mdo/PolicyUtil;->mProfileUrl:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/ca/mdo/PolicyManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/ca/mdo/PolicyUtil;->policyManager:Lcom/ca/mdo/PolicyManager;

    .line 35
    sget-object v0, Lcom/ca/mdo/PolicyUtil;->policyManager:Lcom/ca/mdo/PolicyManager;

    invoke-virtual {v0}, Lcom/ca/mdo/PolicyManager;->init()V

    .line 36
    sget-object v0, Lcom/ca/mdo/PolicyUtil;->policyManager:Lcom/ca/mdo/PolicyManager;

    return-object v0
.end method

.method public static getPolicyManager(Landroid/content/Context;)Lcom/ca/mdo/PolicyManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    sget-boolean v0, Lcom/ca/mdo/PolicyUtil;->refreshPolicy:Z

    if-eqz v0, :cond_1

    .line 23
    invoke-static {p0}, Lcom/ca/mdo/PolicyUtil;->getNewPolicy(Landroid/content/Context;)Lcom/ca/mdo/PolicyManager;

    move-result-object v0

    sput-object v0, Lcom/ca/mdo/PolicyUtil;->policyManager:Lcom/ca/mdo/PolicyManager;

    .line 31
    :cond_0
    :goto_0
    sget-object v0, Lcom/ca/mdo/PolicyUtil;->policyManager:Lcom/ca/mdo/PolicyManager;

    return-object v0

    .line 26
    :cond_1
    sget-object v0, Lcom/ca/mdo/PolicyUtil;->policyManager:Lcom/ca/mdo/PolicyManager;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/ca/mdo/PolicyManager;

    sget-object v1, Lcom/ca/mdo/PolicyUtil;->mProfileUrl:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/ca/mdo/PolicyManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/ca/mdo/PolicyUtil;->policyManager:Lcom/ca/mdo/PolicyManager;

    goto :goto_0
.end method

.method public static refreshPolicy()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ca/mdo/PolicyUtil;->refreshPolicy:Z

    .line 41
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/PolicyUtil;->getPolicyManager(Landroid/content/Context;)Lcom/ca/mdo/PolicyManager;

    .line 42
    return-void
.end method
