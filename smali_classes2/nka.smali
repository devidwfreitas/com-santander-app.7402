.class Lnka;
.super Ljava/lang/Object;

# interfaces
.implements Lnji;


# instance fields
.field final synthetic a:Lnjz;


# direct methods
.method constructor <init>(Lnjz;)V
    .locals 0

    iput-object p1, p0, Lnka;->a:Lnjz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lnil;)V
    .locals 1

    iget-object v0, p0, Lnka;->a:Lnjz;

    invoke-static {v0}, Lnjz;->a(Lnjz;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnil;->b(Ljava/util/Map;)V

    iget-object v0, p0, Lnka;->a:Lnjz;

    invoke-static {v0}, Lnjz;->b(Lnjz;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnil;->b(Ljava/util/Map;)V

    iget-object v0, p0, Lnka;->a:Lnjz;

    invoke-static {v0, p1}, Lnjz;->a(Lnjz;Lnil;)V

    return-void
.end method
