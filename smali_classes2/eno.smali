.class abstract Leno;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final h:Ljava/lang/String;

.field final i:Z

.field final j:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Leno;->h:Ljava/lang/String;

    .line 187
    iput-boolean p2, p0, Leno;->i:Z

    .line 188
    iput-boolean p3, p0, Leno;->j:Z

    .line 189
    return-void
.end method


# virtual methods
.method abstract a(Lepo;Ljava/lang/Object;)V
.end method

.method abstract a(Leps;Ljava/lang/Object;)V
.end method

.method abstract a(Ljava/lang/Object;)Z
.end method
