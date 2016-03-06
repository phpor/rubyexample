#seealso: http://ruby-doc.org/stdlib-2.3.0/libdoc/net/http/rdoc/Net/HTTP.html
require "open-uri"
class Http
	def initailize()

	end

	# 实例方法，不能被类直接调用的
	def fetch_url(url)
		# 下面两行的return都可以省略,因为都是函数的最后一行
		return open(url) { |io|
			return io.read
		}
	end

	# 类方法,这个语法有点儿复杂哦
	class <<self
		def get(url)
			open(url) { |io|
				io.read
			}
		end
		def post(url, data)
			res = Net::HTTP.post_form(URI(url), data)
			res.body
		end
	end

end

puts(Http.new().fetch_url("http://baidu.com/"))
puts(Http.get("http://baidu.com/"))
puts(Http.post("http://baidu.com/", {'a'=>'A', 'b'=>'B'}))
