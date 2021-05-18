.class public Lmgq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmff;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/utils/DummyActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/utils/DummyActivity;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lmgq;->a:Lcom/santander/app/seguros/utils/DummyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lmgq;->a:Lcom/santander/app/seguros/utils/DummyActivity;

    const-string v1, "left"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 163
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lmgq;->a:Lcom/santander/app/seguros/utils/DummyActivity;

    const-string v1, "Right"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 168
    return-void
.end method
