.class Lhlz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhnb;


# instance fields
.field final synthetic a:Lhlx;

.field final synthetic b:Lhly;


# direct methods
.method constructor <init>(Lhly;Lhlx;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lhlz;->b:Lhly;

    iput-object p2, p0, Lhlz;->a:Lhlx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lhlz;->a:Lhlx;

    invoke-interface {v0, p1}, Lhlx;->a(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lhlz;->a:Lhlx;

    invoke-interface {v0, p1}, Lhlx;->b(Ljava/lang/String;)V

    .line 42
    return-void
.end method
