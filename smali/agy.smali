.class final Lagy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lagw;


# direct methods
.method constructor <init>(Lagw;)V
    .locals 0

    iput-object p1, p0, Lagy;->a:Lagw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lagy;->a:Lagw;

    invoke-static {v0}, Lagw;->a(Lagw;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lagl;->tag_informativo_financiamentos:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lagy;->a:Lagw;

    invoke-static {v1}, Lagw;->a(Lagw;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lagl;->tag_valor_financiamento_automoveis:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laiy;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lafw;->a()Lafw;

    move-result-object v0

    iget-object v1, p0, Lagy;->a:Lagw;

    invoke-static {v1}, Lagw;->a(Lagw;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafw;->a(Landroid/app/Activity;)V

    return-void
.end method
