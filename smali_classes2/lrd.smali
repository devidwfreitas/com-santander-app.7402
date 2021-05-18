.class public Llrd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmio;

.field final synthetic b:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;Lmio;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Llrd;->b:Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    iput-object p2, p0, Llrd;->a:Lmio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 166
    invoke-static {}, Lkws;->a()Lkws;

    move-result-object v0

    invoke-virtual {v0}, Lkws;->b()Lnfg;

    move-result-object v0

    new-instance v1, Lkxf;

    iget-object v2, p0, Llrd;->a:Lmio;

    invoke-virtual {v2}, Lmio;->f()[B

    move-result-object v2

    iget-object v3, p0, Llrd;->a:Lmio;

    invoke-virtual {v3}, Lmio;->g()[B

    move-result-object v3

    iget-object v4, p0, Llrd;->a:Lmio;

    invoke-virtual {v4}, Lmio;->d()Lknw;

    move-result-object v4

    iget-object v5, p0, Llrd;->a:Lmio;

    invoke-virtual {v5}, Lmio;->e()Lknw;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lkxf;-><init>([B[BLknw;Lknw;)V

    invoke-virtual {v0, v1}, Lnfg;->a(Ljava/lang/Object;)V

    .line 167
    return-void
.end method
