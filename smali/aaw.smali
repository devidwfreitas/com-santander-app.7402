.class public Laaw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;


# direct methods
.method public constructor <init>(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Laaw;->a:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 57
    if-eqz p2, :cond_0

    .line 58
    iget-object v0, p0, Laaw;->a:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-static {v0}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->b(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Laaw;->a:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-static {v0}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->a(Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;)V

    goto :goto_0
.end method
