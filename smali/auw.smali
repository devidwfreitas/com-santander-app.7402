.class public Lauw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adjust/sdk/IRunActivityHandler;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/adjust/sdk/AdjustInstance;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/AdjustInstance;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lauw;->c:Lcom/adjust/sdk/AdjustInstance;

    iput-object p2, p0, Lauw;->a:Ljava/lang/String;

    iput-object p3, p0, Lauw;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lauw;->a:Ljava/lang/String;

    iget-object v1, p0, Lauw;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->addSessionPartnerParameterI(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method
