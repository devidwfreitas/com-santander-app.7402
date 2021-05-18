.class public Llpq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Llpq;->b:Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;

    iput-object p2, p0, Llpq;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Llpq;->b:Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0907c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Llpq;->b:Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;

    .line 126
    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09070b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Llpq;->a:Ljava/lang/String;

    .line 125
    invoke-static {v0, v1, v2}, Lmie;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmie;

    move-result-object v0

    .line 142
    iget-object v1, p0, Llpq;->b:Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog-select-kinship-tag"

    invoke-virtual {v0, v1, v2}, Lmie;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 143
    return-void
.end method
