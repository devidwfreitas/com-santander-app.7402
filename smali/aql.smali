.class Laql;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Laqe;


# direct methods
.method constructor <init>(Laqe;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Laql;->b:Laqe;

    iput-object p2, p0, Laql;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Laql;->b:Laqe;

    invoke-static {v0}, Laqe;->a(Laqe;)Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->Q()Lapa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Laql;->b:Laqe;

    invoke-static {v0}, Laqe;->a(Laqe;)Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->Q()Lapa;

    move-result-object v0

    const-string v1, "Ok"

    invoke-interface {v0, v1}, Lapa;->b(Ljava/lang/String;)V

    .line 274
    :cond_0
    iget-object v0, p0, Laql;->b:Laqe;

    invoke-static {v0}, Laqe;->d(Laqe;)Laqn;

    move-result-object v0

    iget-object v1, p0, Laql;->a:Ljava/io/File;

    invoke-interface {v0, v1}, Laqn;->a(Ljava/io/File;)V

    .line 275
    return-void
.end method
