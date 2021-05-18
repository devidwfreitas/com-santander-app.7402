.class public Lauz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adjust/sdk/IRunActivityHandler;


# instance fields
.field final synthetic a:Lcom/adjust/sdk/AdjustInstance;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/AdjustInstance;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lauz;->a:Lcom/adjust/sdk/AdjustInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .prologue
    .line 294
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityHandler;->resetSessionCallbackParametersI()V

    .line 295
    return-void
.end method
