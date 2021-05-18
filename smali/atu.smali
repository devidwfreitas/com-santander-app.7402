.class public Latu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/adjust/sdk/ActivityHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/ActivityHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Latu;->c:Lcom/adjust/sdk/ActivityHandler;

    iput-object p2, p0, Latu;->a:Ljava/lang/String;

    iput-object p3, p0, Latu;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 512
    iget-object v0, p0, Latu;->c:Lcom/adjust/sdk/ActivityHandler;

    iget-object v1, p0, Latu;->a:Ljava/lang/String;

    iget-object v2, p0, Latu;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/adjust/sdk/ActivityHandler;->addSessionPartnerParameterI(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    return-void
.end method
