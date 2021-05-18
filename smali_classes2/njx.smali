.class public final Lnjx;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnjq;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lnhp;

.field private final d:Lnhc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "^tealium://.+"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnjx;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lnkj;Lnhp;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lnjx;->c:Lnhp;

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnjx;->b:Ljava/util/Map;

    iget-object v0, p0, Lnjx;->b:Ljava/util/Map;

    const-string v1, "_config"

    new-instance v2, Lnjs;

    iget-object v3, p0, Lnjx;->c:Lnhp;

    invoke-direct {v2, v3}, Lnjs;-><init>(Lnhp;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lnkj;->o()Lnhc;

    move-result-object v0

    iput-object v0, p0, Lnjx;->d:Lnhc;

    return-void
.end method

.method private a(Lnjv;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lnip;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "processRequest must be called in the main thread"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lnjx;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lnjv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnjq;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lnjv;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnjx;->d(Ljava/lang/String;)Lnjq;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnjx;->d:Lnhc;

    invoke-virtual {v0}, Lnhc;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnjx;->d:Lnhc;

    sget v1, Lnkf;->tagbridge_no_command_found:I

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lnjv;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lnhc;->e(I[Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "No remote command found with id \"%s\""

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lnjv;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnjv;->b()Lnjr;

    move-result-object v1

    const/16 v2, 0x194

    invoke-virtual {v1, v2}, Lnjr;->a(I)Lnjr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnjr;->a(Ljava/lang/String;)Lnjr;

    move-result-object v0

    invoke-virtual {v0}, Lnjr;->g()V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lnjx;->d:Lnhc;

    sget v2, Lnkf;->tagbridge_detected_command:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lnjv;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lnjv;->b()Lnjr;

    move-result-object v4

    invoke-virtual {v4}, Lnjr;->d()Lorg/json/JSONObject;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lnhc;->a(I[Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lnjq;->a(Lnjv;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lnjx;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^tealium://_config"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private d(Ljava/lang/String;)Lnjq;
    .locals 3

    const-string v0, "_http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lnjt;

    invoke-direct {v0}, Lnjt;-><init>()V

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lnjx;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lnjq;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lnjq;)V
    .locals 2

    invoke-static {}, Lnip;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remote commands must be added in the main thread."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "remoteCommand must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lnjx;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lnjq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lnjq;)V
    .locals 2

    invoke-static {}, Lnip;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remote commands must be removed in the main thread."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "remoteCommand must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lnjx;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lnjq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lnjv;

    iget-object v1, p0, Lnjx;->c:Lnhp;

    invoke-direct {v0, v1, p1}, Lnjv;-><init>(Lnhp;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lnjx;->a(Lnjv;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnjx;->d:Lnhc;

    invoke-virtual {v1, v0}, Lnhc;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
