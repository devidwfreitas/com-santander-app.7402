.class public Llgr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llif;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Llgr;->a:Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkps;)V
    .locals 3

    .prologue
    .line 203
    invoke-virtual {p1}, Lkps;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f02033a

    invoke-virtual {p1}, Lkps;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Llyj;->a(Ljava/lang/String;ILjava/lang/String;)Llyj;

    move-result-object v0

    .line 204
    iget-object v1, p0, Llgr;->a:Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "info-image-dialog-tag"

    invoke-virtual {v0, v1, v2}, Llyj;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 205
    return-void
.end method
