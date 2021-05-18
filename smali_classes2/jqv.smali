.class public Ljqv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Ljqv;->a:Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Ljqv;->a:Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;

    invoke-static {v0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->b(Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;)Ljrd;

    move-result-object v1

    if-lez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Ljrd;->a(Z)V

    .line 114
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 118
    return-void
.end method
