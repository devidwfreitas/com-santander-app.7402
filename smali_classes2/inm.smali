.class public Linm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Linm;->b:Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;

    iput-object p2, p0, Linm;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Linm;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 183
    return-void
.end method
