.class public Ljpd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Ljpd;->a:Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    const/4 v2, 0x0

    .line 112
    const v0, 0x7f1004ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 114
    :goto_0
    iget-object v0, p0, Ljpd;->a:Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;

    invoke-static {v0}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->f(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 115
    iget-object v0, p0, Ljpd;->a:Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;

    invoke-static {v0}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->f(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfup;

    .line 116
    invoke-virtual {v0}, Lfup;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lfup;->a(Z)V

    .line 118
    iget-object v4, p0, Ljpd;->a:Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;

    invoke-virtual {v0}, Lfup;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->a(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    :goto_1
    iget-object v4, p0, Ljpd;->a:Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;

    invoke-static {v4}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->f(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 114
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v0, v2}, Lfup;->a(Z)V

    goto :goto_1

    .line 126
    :cond_1
    iget-object v0, p0, Ljpd;->a:Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;

    invoke-static {v0}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->g(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;)V

    .line 127
    return-void
.end method
