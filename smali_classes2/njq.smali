.class public abstract Lnjq;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lnjq;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid remote command name."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnjq;->a:Ljava/lang/String;

    if-nez p2, :cond_2

    const-string p2, ""

    :cond_2
    iput-object p2, p0, Lnjq;->b:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-string v0, "^[\\w-]*$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnjq;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract a(Lnjr;)V
.end method

.method final a(Lnjv;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lnjv;->b()Lnjr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnjq;->a(Lnjr;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Lnjv;->b()Lnjr;

    move-result-object v1

    const/16 v2, 0x22b

    invoke-virtual {v1, v2}, Lnjr;->a(I)Lnjr;

    move-result-object v1

    invoke-static {v0}, Lnis;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnjr;->a(Ljava/lang/String;)Lnjr;

    move-result-object v0

    invoke-virtual {v0}, Lnjr;->g()V

    goto :goto_0
.end method
