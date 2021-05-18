.class public Lavc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/adjust/sdk/AdjustInstance;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/AdjustInstance;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lavc;->c:Lcom/adjust/sdk/AdjustInstance;

    iput-object p2, p0, Lavc;->a:Landroid/content/Context;

    iput-object p3, p0, Lavc;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 464
    new-instance v0, Lcom/adjust/sdk/SharedPreferencesManager;

    iget-object v1, p0, Lavc;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adjust/sdk/SharedPreferencesManager;-><init>(Landroid/content/Context;)V

    .line 465
    iget-object v1, p0, Lavc;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/SharedPreferencesManager;->savePushToken(Ljava/lang/String;)V

    .line 466
    return-void
.end method
