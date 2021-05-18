.class Ljmo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldwo;


# instance fields
.field final synthetic a:Ljmn;


# direct methods
.method constructor <init>(Ljmn;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Ljmo;->a:Ljmn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Ljmo;->a:Ljmn;

    invoke-static {v0}, Ljmn;->a(Ljmn;)Lgrs;

    move-result-object v0

    const v1, 0x7f10037d

    invoke-virtual {v0, v1}, Lgrs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Ljmo;->a:Ljmn;

    invoke-static {v0}, Ljmn;->a(Ljmn;)Lgrs;

    move-result-object v0

    const v1, 0x7f10037e

    invoke-virtual {v0, v1}, Lgrs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Ljmo;->a:Ljmn;

    invoke-static {v0}, Ljmn;->a(Ljmn;)Lgrs;

    move-result-object v0

    const v1, 0x7f10037a

    invoke-virtual {v0, v1}, Lgrs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 130
    return-void
.end method
