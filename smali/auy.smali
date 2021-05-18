.class public Lauy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adjust/sdk/IRunActivityHandler;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/adjust/sdk/AdjustInstance;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/AdjustInstance;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lauy;->b:Lcom/adjust/sdk/AdjustInstance;

    iput-object p2, p0, Lauy;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lauy;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/ActivityHandler;->removeSessionPartnerParameterI(Ljava/lang/String;)V

    .line 274
    return-void
.end method
