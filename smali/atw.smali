.class public Latw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/adjust/sdk/ActivityHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/ActivityHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Latw;->b:Lcom/adjust/sdk/ActivityHandler;

    iput-object p2, p0, Latw;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Latw;->b:Lcom/adjust/sdk/ActivityHandler;

    iget-object v1, p0, Latw;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/ActivityHandler;->removeSessionPartnerParameterI(Ljava/lang/String;)V

    .line 533
    return-void
.end method
