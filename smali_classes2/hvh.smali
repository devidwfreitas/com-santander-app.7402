.class Lhvh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhwr;


# instance fields
.field final synthetic a:Lhvd;

.field final synthetic b:Lhve;


# direct methods
.method constructor <init>(Lhve;Lhvd;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lhvh;->b:Lhve;

    iput-object p2, p0, Lhvh;->a:Lhvd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhur;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lhvh;->a:Lhvd;

    invoke-interface {v0}, Lhvd;->a()V

    .line 92
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lhvh;->a:Lhvd;

    iget-object v1, p0, Lhvh;->b:Lhve;

    .line 85
    invoke-static {v1, p1}, Lhve;->a(Lhve;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iget-object v2, p0, Lhvh;->b:Lhve;

    .line 86
    invoke-static {v2, p2}, Lhve;->a(Lhve;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 84
    invoke-interface {v0, v1, v2}, Lhvd;->a(Landroid/text/Spanned;Landroid/text/Spanned;)V

    .line 87
    return-void
.end method
