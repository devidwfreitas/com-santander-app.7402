.class Ljnx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljny;

.field final synthetic b:Ljnw;


# direct methods
.method constructor <init>(Ljnw;Ljny;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Ljnx;->b:Ljnw;

    iput-object p2, p0, Ljnx;->a:Ljny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Ljnx;->b:Ljnw;

    invoke-static {v0}, Ljnw;->a(Ljnw;)Ljnz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Ljnx;->a:Ljny;

    invoke-virtual {v0}, Ljny;->getAdapterPosition()I

    move-result v0

    .line 48
    iget-object v1, p0, Ljnx;->b:Ljnw;

    invoke-static {v1, v0}, Ljnw;->a(Ljnw;I)Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;

    move-result-object v1

    .line 49
    iget-object v2, p0, Ljnx;->b:Ljnw;

    invoke-static {v2}, Ljnw;->b(Ljnw;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    invoke-virtual {v1}, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->f()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    .line 50
    invoke-static {v2, v0}, Ljor;->a(Ljava/lang/String;I)V

    .line 58
    :goto_0
    iget-object v0, p0, Ljnx;->b:Ljnw;

    invoke-static {v0}, Ljnw;->a(Ljnw;)Ljnz;

    move-result-object v0

    invoke-interface {v0, v1}, Ljnz;->a(Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;)V

    .line 60
    :cond_0
    return-void

    .line 55
    :cond_1
    invoke-virtual {v1}, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->f()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    .line 54
    invoke-static {v2, v0}, Ljor;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method
